.class public Lcom/parse/GcmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-class v0, Lcom/parse/PushService;

    invoke-static {p1, p2, v0}, Lcom/parse/ServiceUtils;->runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    return-void
.end method
