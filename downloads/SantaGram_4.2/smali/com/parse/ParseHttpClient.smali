.class abstract Lcom/parse/ParseHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LibraryRequest:Ljava/lang/Object;",
        "LibraryResponse:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final APACHE_HTTPCLIENT_NAME:Ljava/lang/String; = "org.apache.http"

.field private static final KEEP_ALIVE_PROPERTY_NAME:Ljava/lang/String; = "http.keepAlive"

.field private static final MAX_CONNECTIONS_PROPERTY_NAME:Ljava/lang/String; = "http.maxConnections"

.field private static final OKHTTPCLIENT_PATH:Ljava/lang/String; = "okhttp3.OkHttpClient"

.field private static final OKHTTP_NAME:Ljava/lang/String; = "com.squareup.okhttp3"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseHttpClient"

.field private static final URLCONNECTION_NAME:Ljava/lang/String; = "net.java.URLConnection"


# instance fields
.field private externalInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private hasExecuted:Z

.field private internalInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static createClient(ILandroid/net/SSLSessionCache;)Lcom/parse/ParseHttpClient;
    .locals 5

    invoke-static {}, Lcom/parse/ParseHttpClient;->hasOkHttpOnClasspath()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "com.squareup.okhttp3"

    new-instance v0, Lcom/parse/ParseOkHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseOkHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    :goto_0
    const-string v2, "com.parse.ParseHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " library for networking communication."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string v1, "net.java.URLConnection"

    new-instance v0, Lcom/parse/ParseURLConnectionHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    goto :goto_0

    :cond_1
    const-string v1, "org.apache.http"

    new-instance v0, Lcom/parse/ParseApacheHttpClient;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseApacheHttpClient;-><init>(ILandroid/net/SSLSessionCache;)V

    goto :goto_0
.end method

.method private static hasOkHttpOnClasspath()Z
    .locals 1

    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setKeepAlive(Z)V
    .locals 2

    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setMaxConnections(I)V
    .locals 2

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max connections should be large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http.maxConnections"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addExternalInterceptor(Lcom/parse/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addInternalInterceptor(Lcom/parse/a/d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`ParseHttpClient#addInternalInterceptor(ParseNetworkInterceptor)` can only be invoked before `ParseHttpClient` execute any request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method disableHttpLibraryAutoDecompress()Z
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final execute(Lcom/parse/a/b;)Lcom/parse/a/c;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    :cond_0
    new-instance v0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/a/b;)V

    invoke-interface {v0, p1}, Lcom/parse/a/d$a;->proceed(Lcom/parse/a/b;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method

.method abstract executeInternal(Lcom/parse/a/b;)Lcom/parse/a/c;
.end method

.method abstract getRequest(Lcom/parse/a/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/a/b;",
            ")T",
            "LibraryRequest;"
        }
    .end annotation
.end method

.method abstract getResponse(Ljava/lang/Object;)Lcom/parse/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LibraryResponse;",
            ")",
            "Lcom/parse/a/c;"
        }
    .end annotation
.end method
