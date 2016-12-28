.class public Lcom/parse/NotificationCompat$Builder$BigTextStyle;
.super Lcom/parse/NotificationCompat$Builder$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/parse/NotificationCompat$Builder;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    invoke-virtual {p0, p1}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->setBuilder(Lcom/parse/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0

    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0

    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 1

    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryTextSet:Z

    return-object p0
.end method
