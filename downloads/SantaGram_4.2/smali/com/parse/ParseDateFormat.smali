.class Lcom/parse/ParseDateFormat;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Lcom/parse/ParseDateFormat;

.field private static final TAG:Ljava/lang/String; = "ParseDateFormat"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/parse/ParseDateFormat;

    invoke-direct {v0}, Lcom/parse/ParseDateFormat;-><init>()V

    sput-object v0, Lcom/parse/ParseDateFormat;->INSTANCE:Lcom/parse/ParseDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public static getInstance()Lcom/parse/ParseDateFormat;
    .locals 1

    sget-object v0, Lcom/parse/ParseDateFormat;->INSTANCE:Lcom/parse/ParseDateFormat;

    return-object v0
.end method


# virtual methods
.method format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

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

.method parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    iget-object v1, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ParseDateFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
