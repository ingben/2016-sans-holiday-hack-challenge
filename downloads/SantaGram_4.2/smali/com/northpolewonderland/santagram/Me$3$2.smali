.class Lcom/northpolewonderland/santagram/Me$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$3;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Me$3;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$3;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    new-instance v1, Landroid/support/v7/a/d$a;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-direct {v1, v2}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v2, "Are you sure you want to delete this post?"

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v2

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v2

    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v2

    const-string v3, "Delete post"

    new-instance v4, Lcom/northpolewonderland/santagram/Me$3$2$1;

    invoke-direct {v4, p0, v0}, Lcom/northpolewonderland/santagram/Me$3$2$1;-><init>(Lcom/northpolewonderland/santagram/Me$3$2;Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v1}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    const/4 v0, 0x1

    return v0
.end method
