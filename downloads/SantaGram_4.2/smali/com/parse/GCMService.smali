.class Lcom/parse/GCMService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ProxyService;


# static fields
.field public static final RECEIVE_PUSH_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final REGISTER_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final TAG:Ljava/lang/String; = "GCMService"


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/GCMService;->parent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/GCMService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/GCMService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/GCMService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/GCMService;->stopParent(I)V

    return-void
.end method

.method private handleGcmPushIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "GCMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored special message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from GCM via intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "push_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/parse/PushRouter;->handlePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GCMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring push because of JSON exception while processing: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleGcmRegistrationIntent(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->handleRegistrationIntentAsync(Landroid/content/Intent;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->h()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/parse/GCMService;->handleGcmRegistrationIntent(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/parse/GCMService;->handleGcmPushIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "GCMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushService got unknown intent in GCM mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopParent(I)V
    .locals 1

    iget-object v0, p0, Lcom/parse/GCMService;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/GCMService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/GCMService$1;-><init>(Lcom/parse/GCMService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x2

    return v0
.end method
