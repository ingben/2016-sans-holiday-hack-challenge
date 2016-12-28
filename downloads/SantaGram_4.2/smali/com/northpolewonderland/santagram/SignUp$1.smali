.class Lcom/northpolewonderland/santagram/SignUp$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/SignUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/SignUp;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/SignUp;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/SignUp;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/SignUp;->passwordTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/SignUp;->fullnameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "You must fill all the fields to Sign Up!"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->a(I)V

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/SignUp;->progDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/SignUp;->dismisskeyboard()V

    new-instance v0, Lcom/parse/ParseUser;

    invoke-direct {v0}, Lcom/parse/ParseUser;-><init>()V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/SignUp;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/SignUp;->passwordTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/SignUp;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setEmail(Ljava/lang/String;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/SignUp$1;->a:Lcom/northpolewonderland/santagram/SignUp;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/SignUp;->fullnameTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_IS_REPORTED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/northpolewonderland/santagram/SignUp$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/SignUp$1$1;-><init>(Lcom/northpolewonderland/santagram/SignUp$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->signUpInBackground(Lcom/parse/SignUpCallback;)V

    goto :goto_0
.end method
