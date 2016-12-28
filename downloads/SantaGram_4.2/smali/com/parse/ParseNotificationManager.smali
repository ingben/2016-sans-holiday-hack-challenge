.class Lcom/parse/ParseNotificationManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseNotificationManager$Singleton;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.parse.ParseNotificationManager"


# instance fields
.field private final notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile shouldShowNotifications:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    return-void
.end method

.method public static getInstance()Lcom/parse/ParseNotificationManager;
    .locals 1

    # getter for: Lcom/parse/ParseNotificationManager$Singleton;->INSTANCE:Lcom/parse/ParseNotificationManager;
    invoke-static {}, Lcom/parse/ParseNotificationManager$Singleton;->access$000()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNotificationCount()I
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public setShouldShowNotifications(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    return-void
.end method

.method public showNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const/4 v2, 0x5

    iput v2, p2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
