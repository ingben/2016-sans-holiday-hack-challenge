.class Lcom/parse/GcmRegistrar$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedAsync()La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->localDeviceTokenLastModifiedMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$400(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J
    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$500(Lcom/parse/GcmRegistrar;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedFile()Ljava/io/File;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/parse/ParseFileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # setter for: Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J
    invoke-static {v2, v4, v5}, Lcom/parse/GcmRegistrar;->access$502(Lcom/parse/GcmRegistrar;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J
    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$500(Lcom/parse/GcmRegistrar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    const-wide/16 v2, 0x0

    # setter for: Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J
    invoke-static {v0, v2, v3}, Lcom/parse/GcmRegistrar;->access$502(Lcom/parse/GcmRegistrar;J)J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/GcmRegistrar$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
