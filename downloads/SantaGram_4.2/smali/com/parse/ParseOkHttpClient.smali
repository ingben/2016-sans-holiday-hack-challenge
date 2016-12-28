.class Lcom/parse/ParseOkHttpClient;
.super Lcom/parse/ParseHttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseHttpClient",
        "<",
        "Lokhttp3/Request;",
        "Lokhttp3/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final OKHTTP_DELETE:Ljava/lang/String; = "DELETE"

.field private static final OKHTTP_GET:Ljava/lang/String; = "GET"

.field private static final OKHTTP_POST:Ljava/lang/String; = "POST"

.field private static final OKHTTP_PUT:Ljava/lang/String; = "PUT"


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(ILandroid/net/SSLSessionCache;)V
    .locals 4

    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseOkHttpClient;Lokhttp3/Request;)Lcom/parse/a/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/ParseOkHttpClient;->getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/a/b;

    move-result-object v0

    return-object v0
.end method

.method private getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/a/b;
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Lcom/parse/a/b$a;

    invoke-direct {v3}, Lcom/parse/a/b$a;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "DELETE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "PUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;

    :goto_1
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Ljava/lang/String;)Lcom/parse/a/b$a;

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->getParseHttpBody()Lcom/parse/a/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/parse/a/b$a;->a(Lcom/parse/a/a;)Lcom/parse/a/b$a;

    :cond_2
    invoke-virtual {v3}, Lcom/parse/a/b$a;->a()Lcom/parse/a/b;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_3
        0x2590a0 -> :sswitch_2
        0x77f979ab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addExternalInterceptor(Lcom/parse/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseOkHttpClient$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseOkHttpClient$1;-><init>(Lcom/parse/ParseOkHttpClient;Lcom/parse/a/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method executeInternal(Lcom/parse/a/b;)Lcom/parse/a/c;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/a/b;)Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseOkHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getRequest(Lcom/parse/a/b;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/a/b;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method getRequest(Lcom/parse/a/b;)Lokhttp3/Request;
    .locals 6

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/a/b;->b()Lcom/parse/a/b$b;

    move-result-object v3

    sget-object v0, Lcom/parse/ParseOkHttpClient$2;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v3}, Lcom/parse/a/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    :goto_0
    :pswitch_1
    invoke-virtual {p1}, Lcom/parse/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/a/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lcom/parse/a/b;->d()Lcom/parse/a/a;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v4, v1, Lcom/parse/ParseByteArrayHttpBody;

    if-eqz v4, :cond_1

    new-instance v0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;

    invoke-direct {v0, v1}, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;-><init>(Lcom/parse/a/a;)V

    :cond_1
    sget-object v1, Lcom/parse/ParseOkHttpClient$2;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v3}, Lcom/parse/a/b$b;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    :goto_2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    :pswitch_4
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method bridge synthetic getResponse(Ljava/lang/Object;)Lcom/parse/a/c;
    .locals 1

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method

.method getResponse(Lokhttp3/Response;)Lcom/parse/a/c;
    .locals 8

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v6, Lcom/parse/a/c$a;

    invoke-direct {v6}, Lcom/parse/a/c$a;-><init>()V

    invoke-virtual {v6, v1}, Lcom/parse/a/c$a;->a(I)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parse/a/c$a;->a(Ljava/io/InputStream;)Lcom/parse/a/c$a;

    move-result-object v1

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/c$a;->a(J)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parse/a/c$a;->a(Ljava/lang/String;)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/parse/a/c$a;->a(Ljava/util/Map;)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/a/c$a;->b(Ljava/lang/String;)Lcom/parse/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/a/c$a;->a()Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method
