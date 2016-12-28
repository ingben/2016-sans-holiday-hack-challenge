.class Lcom/parse/OfflineStore$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Landroid/database/Cursor;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to find non-existent uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    if-eqz v1, :cond_1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {v1, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v0}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/parse/OfflineStore$3;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;
    invoke-static {v0}, Lcom/parse/OfflineStore;->access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/parse/OfflineStore$3;->val$uuid:Ljava/lang/String;

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$3;->then(La/j;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
