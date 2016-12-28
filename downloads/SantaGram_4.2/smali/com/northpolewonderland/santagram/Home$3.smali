.class Lcom/northpolewonderland/santagram/Home$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Home;->a()V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Home;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Home;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Home$3;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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

    const/4 v1, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iput-object p1, v0, Lcom/northpolewonderland/santagram/Home;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v2, Lcom/northpolewonderland/santagram/Home$3$1;

    invoke-direct {v2, p0}, Lcom/northpolewonderland/santagram/Home$3$1;-><init>(Lcom/northpolewonderland/santagram/Home$3;)V

    invoke-virtual {v0, v2}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    const v2, 0x7f0d0099

    invoke-virtual {v0, v2}, Lcom/northpolewonderland/santagram/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$3;->a:Lcom/northpolewonderland/santagram/Home;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method
