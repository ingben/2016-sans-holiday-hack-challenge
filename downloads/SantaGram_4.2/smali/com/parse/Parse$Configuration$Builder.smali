.class public final Lcom/parse/Parse$Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Parse$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private localDataStoreEnabled:Z

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://api.parse.com/1/"

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.parse.APPLICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    const-string v1, "com.parse.CLIENT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/parse/Parse$Configuration$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/Parse$Configuration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parse/Parse$Configuration$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    return-object p0
.end method


# virtual methods
.method public addNetworkInterceptor(Lcom/parse/a/d;)Lcom/parse/Parse$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/parse/Parse$Configuration;
    .locals 2

    new-instance v0, Lcom/parse/Parse$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/Parse$Configuration;-><init>(Lcom/parse/Parse$Configuration$Builder;Lcom/parse/Parse$1;)V

    return-object v0
.end method

.method public clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    return-object p0
.end method

.method public enableLocalDataStore()Lcom/parse/Parse$Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    return-object p0
.end method

.method public server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    return-object p0
.end method

.method setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/a/d;",
            ">;)",
            "Lcom/parse/Parse$Configuration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
