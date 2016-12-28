.class public final Lcom/parse/PushService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$ServiceLifecycleCallbacks;
    }
.end annotation


# static fields
.field static final ACTION_START_IF_REQUIRED:Ljava/lang/String; = "com.parse.PushService.startIfRequired"

.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field private static loggedStartError:Z

.field private static serviceLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/PushService$ServiceLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private proxy:Lcom/parse/ProxyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static collectServiceLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dispatchOnServiceCreated(Landroid/app/Service;)V
    .locals 4

    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceCreated(Landroid/app/Service;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static dispatchOnServiceDestroyed(Landroid/app/Service;)V
    .locals 4

    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceDestroyed(Landroid/app/Service;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static registerServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2

    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static startServiceIfRequired(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    if-nez v0, :cond_0

    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to use push, but this app is not configured for push due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getNonePushTypeLogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v1, v2, :cond_1

    const-string v1, "com.parse.PushService"

    const-string v2, "Detected a client that used to use GCM and is now using PPNS."

    invoke-static {v1, v2}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removePushType()V

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removeDeviceToken()V

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()La/j;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.parse.PushService.startIfRequired"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/parse/PushService;

    invoke-static {p0, v0, v1}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar;->registerAsync()La/j;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static stopServiceIfRequired(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static unregisterServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2

    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.parse.PushService"

    const-string v1, "PushService somehow started even though this device doesn\'t support push."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0}, Lcom/parse/ProxyService;->onCreate()V

    :cond_1
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceCreated(Landroid/app/Service;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/parse/PPNSUtil;->newPPNSService(Landroid/app/Service;)Lcom/parse/ProxyService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/parse/GCMService;

    invoke-direct {v0, p0}, Lcom/parse/GCMService;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0}, Lcom/parse/ProxyService;->onDestroy()V

    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceDestroyed(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started push service even though no push service is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ProxyService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
