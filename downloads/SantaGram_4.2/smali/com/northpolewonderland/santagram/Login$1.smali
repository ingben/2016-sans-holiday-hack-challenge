.class Lcom/northpolewonderland/santagram/Login$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Login;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Login;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Login;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Login;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/northpolewonderland/santagram/Login$1$1;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Login$1$1;-><init>(Lcom/northpolewonderland/santagram/Login$1;)V

    invoke-static {v0, v1, v2}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V

    return-void
.end method
