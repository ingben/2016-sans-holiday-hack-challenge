.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Installation"
.end annotation


# static fields
.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field static final KEY_CHANNELS:Ljava/lang/String; = "channels"

.field private static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final KEY_INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field private static final KEY_LOCALE:Ljava/lang/String; = "localeIdentifier"

.field private static final KEY_PARSE_VERSION:Ljava/lang/String; = "parseVersion"

.field private static final KEY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final KEY_TIME_ZONE:Ljava/lang/String; = "timeZone"

.field private static final READ_ONLY_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pushType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "localeIdentifier"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appIdentifier"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/parse/ParseInstallation;Ljava/lang/String;La/j;)La/j;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentInstallationController;->getAsync()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private updateLocaleIdentifier()V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "he"

    :cond_2
    const-string v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "id"

    :cond_3
    const-string v2, "ji"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "yi"

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "localeIdentifier"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "localeIdentifier"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateTimezone()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "timeZone"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 5

    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    const-string v4, "appIdentifier"

    invoke-virtual {p0, v4}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "appIdentifier"

    invoke-virtual {p0, v4, v2}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "appName"

    invoke-virtual {p0, v2}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "appName"

    invoke-virtual {p0, v2, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "appVersion"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "appVersion"

    invoke-virtual {p0, v0, v3}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "1.13.1"

    const-string v2, "parseVersion"

    invoke-virtual {p0, v2}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "parseVersion"

    const-string v2, "1.13.1"

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v0, "com.parse.ParseInstallation"

    const-string v2, "Cannot load package info; will not be saved to installation"

    invoke-static {v0, v2}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method fetchAsync(Ljava/lang/String;La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseInstallation;->saveAsync(Ljava/lang/String;La/j;)La/j;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/parse/ParseInstallation$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseInstallation$1;-><init>(Lcom/parse/ParseInstallation;Ljava/lang/String;La/j;)V

    invoke-virtual {v0, v2}, La/j;->d(La/h;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushType()Lcom/parse/PushType;
    .locals 1

    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushType;->fromString(Ljava/lang/String;)Lcom/parse/PushType;

    move-result-object v0

    return-object v0
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/parse/ParseObject;->handleFetchResultAsync(Lcom/parse/ParseObject$State;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$3;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/parse/ParseInstallation$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$2;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsDefaultACL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method removeDeviceToken()V
    .locals 1

    const-string v0, "deviceToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    return-void
.end method

.method removePushType()V
    .locals 1

    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "deviceToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setPushType(Lcom/parse/PushType;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "pushType"

    invoke-virtual {p1}, Lcom/parse/PushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateBeforeSave()V
    .locals 1

    invoke-super {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentInstallationController;->isCurrent(Lcom/parse/ParseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateLocaleIdentifier()V

    :cond_0
    return-void
.end method

.method updateDeviceInfo()V
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->updateDeviceInfo(Lcom/parse/InstallationId;)V

    return-void
.end method

.method updateDeviceInfo(Lcom/parse/InstallationId;)V
    .locals 2

    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "installationId"

    invoke-virtual {p1}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "android"

    const-string v1, "deviceType"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
