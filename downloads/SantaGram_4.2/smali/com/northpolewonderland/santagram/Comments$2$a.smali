.class Lcom/northpolewonderland/santagram/Comments$2$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Comments$2;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Comments$2;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/northpolewonderland/santagram/Comments$2;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->a:Lcom/northpolewonderland/santagram/Comments$2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->a:Lcom/northpolewonderland/santagram/Comments$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments;->commentsArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->a:Lcom/northpolewonderland/santagram/Comments$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments;->commentsArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a;->a:Lcom/northpolewonderland/santagram/Comments$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments;->commentsArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    new-instance v2, Lcom/northpolewonderland/santagram/Comments$2$a$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/northpolewonderland/santagram/Comments$2$a$1;-><init>(Lcom/northpolewonderland/santagram/Comments$2$a;Landroid/view/View;Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    return-object p2
.end method
