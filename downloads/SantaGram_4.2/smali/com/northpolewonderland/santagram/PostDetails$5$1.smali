.class Lcom/northpolewonderland/santagram/PostDetails$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/northpolewonderland/santagram/PostDetails$5;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$5;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->b:Lcom/northpolewonderland/santagram/PostDetails$5;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->b:Lcom/northpolewonderland/santagram/PostDetails$5;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_REPORT_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1;->b:Lcom/northpolewonderland/santagram/PostDetails$5;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$5$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    return-void
.end method
