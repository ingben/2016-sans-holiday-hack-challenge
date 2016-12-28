.class Lcom/northpolewonderland/santagram/Login$3;
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

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Login$3;->a:Lcom/northpolewonderland/santagram/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Login$3;->a:Lcom/northpolewonderland/santagram/Login;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    const-string v1, "Type the valid email address you\'ve used to register on this app"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Login$3;->a:Lcom/northpolewonderland/santagram/Login;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    const-string v2, "OK"

    new-instance v3, Lcom/northpolewonderland/santagram/Login$3$1;

    invoke-direct {v3, p0, v1}, Lcom/northpolewonderland/santagram/Login$3$1;-><init>(Lcom/northpolewonderland/santagram/Login$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    const-string v1, "Cancel"

    new-instance v2, Lcom/northpolewonderland/santagram/Login$3$2;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Login$3$2;-><init>(Lcom/northpolewonderland/santagram/Login$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->c()Landroid/support/v7/a/d;

    return-void
.end method
