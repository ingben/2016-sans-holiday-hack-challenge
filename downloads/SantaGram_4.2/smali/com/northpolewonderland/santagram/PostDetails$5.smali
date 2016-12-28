.class Lcom/northpolewonderland/santagram/PostDetails$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v2, "Briefly explain the reason why you are reporting this post"

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v2

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v2

    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/northpolewonderland/santagram/PostDetails$5$1;

    invoke-direct {v4, p0, v1}, Lcom/northpolewonderland/santagram/PostDetails$5$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$5;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    return-void
.end method
