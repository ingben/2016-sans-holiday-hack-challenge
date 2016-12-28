.class Lcom/northpolewonderland/santagram/OtherUserProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/OtherUserProfile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/northpolewonderland/santagram/OtherUserProfile;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/OtherUserProfile;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Reporting User..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reportMessage"

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reportUser"

    new-instance v2, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile$2;)V

    invoke-static {v1, v0, v2}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V

    return-void
.end method
