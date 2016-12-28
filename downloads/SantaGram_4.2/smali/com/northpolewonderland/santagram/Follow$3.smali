.class Lcom/northpolewonderland/santagram/Follow$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Follow;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Follow;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Follow;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Follow$3;->a:Lcom/northpolewonderland/santagram/Follow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$3;->a:Lcom/northpolewonderland/santagram/Follow;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Follow;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Follow$3;->a:Lcom/northpolewonderland/santagram/Follow;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Follow;->d:Ljava/lang/String;

    const-string v2, "Followers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/Follow$3$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Follow$3$1;-><init>(Lcom/northpolewonderland/santagram/Follow$3;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/northpolewonderland/santagram/Follow$3;->a:Lcom/northpolewonderland/santagram/Follow;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Follow;->d:Ljava/lang/String;

    const-string v2, "Following"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/Follow$3$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Follow$3$2;-><init>(Lcom/northpolewonderland/santagram/Follow$3;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    goto :goto_0
.end method
