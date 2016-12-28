.class Lcom/parse/ParseObject$31;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleDeleteResultAsync()La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$31;->val$store:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    iget-boolean v0, v0, Lcom/parse/ParseObject;->isDeleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$31;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->unregisterObject(Lcom/parse/ParseObject;)V

    iget-object v0, p0, Lcom/parse/ParseObject$31;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$31;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$31;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)La/j;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$31;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
