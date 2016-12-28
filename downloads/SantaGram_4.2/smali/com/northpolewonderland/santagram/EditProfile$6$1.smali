.class Lcom/northpolewonderland/santagram/EditProfile$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/EditProfile$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/EditProfile$6;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/EditProfile$6;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/EditProfile$6$1;->a:Lcom/northpolewonderland/santagram/EditProfile$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6$1;->a:Lcom/northpolewonderland/santagram/EditProfile$6;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/EditProfile$6$1;->a:Lcom/northpolewonderland/santagram/EditProfile$6;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Your profile has been updated!"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6$1;->a:Lcom/northpolewonderland/santagram/EditProfile$6;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/EditProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/EditProfile$6$1;->a:Lcom/northpolewonderland/santagram/EditProfile$6;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile$6;->c:Lcom/northpolewonderland/santagram/EditProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/EditProfile;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/EditProfile$6$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
