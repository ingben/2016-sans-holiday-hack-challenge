.class Lcom/northpolewonderland/santagram/EditProfile$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/EditProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/northpolewonderland/santagram/EditProfile;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/EditProfile;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    const-string v1, "Updating profile..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->b:Lcom/parse/ParseUser;

    new-instance v1, Lcom/northpolewonderland/santagram/EditProfile$6$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/EditProfile$6$1;-><init>(Lcom/northpolewonderland/santagram/EditProfile$6;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    return-void
.end method
