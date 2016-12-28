.class Lcom/parse/ParsePinningEventuallyQueue;
.super Lcom/parse/ParseEventuallyQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePinningEventuallyQueue$PauseException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParsePinningEventuallyQueue"


# instance fields
.field private final connectionLock:Ljava/lang/Object;

.field private connectionTaskCompletionSource:La/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/k",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lcom/parse/ParseHttpClient;

.field private listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private notifier:Lcom/parse/ConnectivityNotifier;

.field private operationSetTaskQueue:Lcom/parse/TaskQueue;

.field private pendingEventuallyTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "La/k",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "La/k",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private taskQueue:Lcom/parse/TaskQueue;

.field private final taskQueueSyncLock:Ljava/lang/Object;

.field private uuidToEventuallyPin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation
.end field

.field private uuidToOperationSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$1;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;La/j;La/k;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;La/j;La/k;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParsePinningEventuallyQueue;)La/j;
    .locals 1

    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePinningEventuallyQueue;La/j;)La/j;
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)La/j;
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;La/j;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePinningEventuallyQueue;)La/j;
    .locals 1

    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;La/j;La/k;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "La/k",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/parse/ParsePinningEventuallyQueue$5;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseObject;Lcom/parse/ParseRESTCommand;La/k;)V

    invoke-virtual {p3, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$6;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$6;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync(La/j;)La/j;
    .locals 2
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

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$8;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$8;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$7;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$7;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue$13;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParsePinningEventuallyQueue$9;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
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

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$11;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$11;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p2, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private waitForConnectionAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whenAll(Ljava/util/Collection;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/TaskQueue;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/TaskQueue;

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$15;

    invoke-direct {v3, p0}, Lcom/parse/ParsePinningEventuallyQueue$15;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v3}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$14;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$14;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->simulateReboot()V

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue$4;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;La/k;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    return-void
.end method

.method public pause()V
    .locals 5

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v2}, La/k;->a(Ljava/lang/Exception;)Z

    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v2}, La/k;->a(Ljava/lang/Exception;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v3}, La/k;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Lcom/parse/TaskQueue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->whenAll(Ljava/util/Collection;)La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/parse/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCount()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCountAsync()La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue;La/k;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0
.end method

.method public pendingCountAsync(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$3;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$3;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    invoke-virtual {v0, v1}, La/k;->a(Ljava/lang/Object;)Z

    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    invoke-virtual {v0, v1}, La/k;->a(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()La/j;

    return-void

    :cond_0
    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    goto :goto_0
.end method

.method public setConnected(Z)V
    .locals 3

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, La/k;->a(Ljava/lang/Object;)Z

    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, La/k;->a(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:La/k;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    return-void
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/EventuallyPin;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    if-eqz v0, :cond_1

    if-nez v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    :goto_2
    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either operationSet or eventuallyPin must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {}, La/j;->b()La/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/k;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$12;

    invoke-direct {v1, p0, v3, v2}, Lcom/parse/ParsePinningEventuallyQueue$12;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;La/k;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method
