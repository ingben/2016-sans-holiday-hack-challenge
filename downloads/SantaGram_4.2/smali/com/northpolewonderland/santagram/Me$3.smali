.class Lcom/northpolewonderland/santagram/Me$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me;->b()V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Me;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$3;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 4
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

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iput-object p1, v0, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/Me;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3$a;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/Me;->m:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/northpolewonderland/santagram/Me$3$a;-><init>(Lcom/northpolewonderland/santagram/Me$3;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$3$1;-><init>(Lcom/northpolewonderland/santagram/Me$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/northpolewonderland/santagram/Me$3$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$3$2;-><init>(Lcom/northpolewonderland/santagram/Me$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

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

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$3;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
