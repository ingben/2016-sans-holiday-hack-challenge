.class Lcom/northpolewonderland/santagram/Me$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$3$1;->a:Lcom/northpolewonderland/santagram/Me$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$1;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me$3$1;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    const-class v3, Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "objectID"

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$1;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/Me;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
