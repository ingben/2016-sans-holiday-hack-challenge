.class Lcom/northpolewonderland/santagram/Me$3$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$3$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Me$3$2$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$3$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iput-object p1, v0, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->deleteInBackground()La/j;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->a:Lcom/parse/ParseObject;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$3$2$1$1$1;-><init>(Lcom/northpolewonderland/santagram/Me$3$2$1$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Me;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3$2$1$1;->a:Lcom/northpolewonderland/santagram/Me$3$2$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2$1;->b:Lcom/northpolewonderland/santagram/Me$3$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3$2;->a:Lcom/northpolewonderland/santagram/Me$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method
