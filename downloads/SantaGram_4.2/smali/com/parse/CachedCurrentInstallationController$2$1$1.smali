.class Lcom/parse/CachedCurrentInstallationController$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentInstallationController$2$1;->then(La/j;)La/j;
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
        "Lcom/parse/ParseInstallation;",
        "Lcom/parse/ParseInstallation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentInstallationController$2$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentInstallationController$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseInstallation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lcom/parse/ParseInstallation;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    if-nez v0, :cond_0

    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    # getter for: Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;
    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->updateDeviceInfo(Lcom/parse/InstallationId;)V

    :goto_0
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    # getter for: Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v2, v2, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iput-object v0, v2, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    # getter for: Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;
    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/InstallationId;->set(Ljava/lang/String;)V

    const-string v1, "com.parse.CachedCurrentInstallationController"

    const-string v2, "Successfully deserialized Installation object"

    invoke-static {v1, v2}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController$2$1$1;->then(La/j;)Lcom/parse/ParseInstallation;

    move-result-object v0

    return-object v0
.end method
