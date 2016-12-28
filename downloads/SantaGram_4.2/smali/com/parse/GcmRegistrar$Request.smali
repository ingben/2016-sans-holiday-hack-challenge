.class Lcom/parse/GcmRegistrar$Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/GcmRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# static fields
.field private static final BACKOFF_INTERVAL_MS:I = 0xbb8

.field private static final MAX_RETRIES:I = 0x5

.field private static final RETRY_ACTION:Ljava/lang/String; = "com.parse.RetryGcmRegistration"


# instance fields
.field private final appIntent:Landroid/app/PendingIntent;

.field private final context:Landroid/content/Context;

.field private final identifier:I

.field private final random:Ljava/util/Random;

.field private final retryIntent:Landroid/app/PendingIntent;

.field private final retryReceiver:Landroid/content/BroadcastReceiver;

.field private final senderId:Ljava/lang/String;

.field private final tcs:La/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/k",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tries:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/parse/GcmRegistrar$Request;->senderId:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tcs:La/k;

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget v1, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.parse.RetryGcmRegistration"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "random"

    iget v3, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget v3, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/parse/GcmRegistrar$Request$1;

    invoke-direct {v1, p0}, Lcom/parse/GcmRegistrar$Request$1;-><init>(Lcom/parse/GcmRegistrar$Request;)V

    iput-object v1, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.parse.RetryGcmRegistration"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$300(Lcom/parse/GcmRegistrar$Request;)I
    .locals 1

    iget v0, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    return v0
.end method

.method static synthetic access$600(Lcom/parse/GcmRegistrar$Request;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/GcmRegistrar$Request;->send()V

    return-void
.end method

.method public static createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;
    .locals 1

    new-instance v0, Lcom/parse/GcmRegistrar$Request;

    invoke-direct {v0, p0, p1}, Lcom/parse/GcmRegistrar$Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/parse/GcmRegistrar$Request;->send()V

    return-object v0
.end method

.method private finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tcs:La/k;

    invoke-virtual {v0, p1}, La/k;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tcs:La/k;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM registration error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/k;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method private send()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sender"

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app"

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "GSF_PACKAGE_NOT_AVAILABLE"

    invoke-direct {p0, v1, v0}, Lcom/parse/GcmRegistrar$Request;->finish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v0, "com.parse.GcmRegistrar"

    const-string v1, "Sending GCM registration intent"

    invoke-static {v0, v1}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getTask()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tcs:La/k;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveResponseIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, "com.parse.GcmRegistrar"

    const-string v1, "Got no registration info in GCM onReceiveResponseIntent"

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    shl-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xbb8

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/parse/GcmRegistrar$Request;->finish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
