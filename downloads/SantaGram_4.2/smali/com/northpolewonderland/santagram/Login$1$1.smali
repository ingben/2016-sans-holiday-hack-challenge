.class Lcom/northpolewonderland/santagram/Login$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/LogInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Login$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Login$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Login$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    const-class v3, Lcom/northpolewonderland/santagram/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/Login;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login$1$1;->a:Lcom/northpolewonderland/santagram/Login$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Login$1;->a:Lcom/northpolewonderland/santagram/Login;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Login$1$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
