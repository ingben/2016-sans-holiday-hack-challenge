.class Lcom/parse/OfflineStore$5;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$isCount:Z

.field final synthetic val$query:Lcom/parse/ParseQuery$State;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseQuery$State;ZLcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    iput-boolean p4, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    iput-object p5, p0, Lcom/parse/OfflineStore$5;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-static {v0, v1}, Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V

    iget-object v0, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v1

    iget-boolean v2, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    if-nez v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v1

    iget-boolean v2, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    if-nez v2, :cond_2

    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    new-instance v4, Lcom/parse/OfflineStore$5$1;

    invoke-direct {v4, p0, v0}, Lcom/parse/OfflineStore$5$1;-><init>(Lcom/parse/OfflineStore$5;Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v4}, La/j;->d(La/h;)La/j;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/parse/OfflineStore$5$2;

    invoke-direct {v0, p0, v1}, Lcom/parse/OfflineStore$5$2;-><init>(Lcom/parse/OfflineStore$5;Ljava/util/List;)V

    invoke-virtual {v2, v0}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$5;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
