.class Lcom/parse/OfflineStore$40;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Lcom/parse/ParsePin;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$40;->val$objects:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParsePin;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    invoke-virtual {v0}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/parse/OfflineStore$40;->val$objects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v1, v0, v2}, Lcom/parse/OfflineStore;->access$2000(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    iget-object v1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v1, v0, v2, v3}, Lcom/parse/OfflineStore;->access$1500(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$40;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
