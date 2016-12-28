.class Lcom/parse/ParseURLConnectionHttpClient;
.super Lcom/parse/ParseHttpClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseHttpClient",
        "<",
        "Ljava/net/HttpURLConnection;",
        "Ljava/net/HttpURLConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# instance fields
.field private socketOperationTimeout:I


# direct methods
.method public constructor <init>(ILandroid/net/SSLSessionCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseHttpClient;-><init>()V

    iput p1, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    return-void
.end method


# virtual methods
.method executeInternal(Lcom/parse/a/b;)Lcom/parse/a/c;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getRequest(Lcom/parse/a/b;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/a/b;->d()Lcom/parse/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/a/a;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/parse/ParseURLConnectionHttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getRequest(Lcom/parse/a/b;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getRequest(Lcom/parse/a/b;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method getRequest(Lcom/parse/a/b;)Ljava/net/HttpURLConnection;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/parse/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/parse/a/b;->b()Lcom/parse/a/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/parse/ParseURLConnectionHttpClient;->socketOperationTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/parse/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseURLConnectionHttpClient;->disableHttpLibraryAutoDecompress()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Accept-encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/parse/a/b;->d()Lcom/parse/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "Content-Length"

    invoke-virtual {v1}, Lcom/parse/a/a;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    invoke-virtual {v1}, Lcom/parse/a/a;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/parse/a/a;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_2
    return-object v0
.end method

.method bridge synthetic getResponse(Ljava/lang/Object;)Lcom/parse/a/c;
    .locals 1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Lcom/parse/ParseURLConnectionHttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method

.method getResponse(Ljava/net/HttpURLConnection;)Lcom/parse/a/c;
    .locals 9

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v0, 0x190

    if-ge v3, v0, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v0, ""

    :goto_2
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/a/c$a;

    invoke-direct {v1}, Lcom/parse/a/c$a;-><init>()V

    invoke-virtual {v1, v3}, Lcom/parse/a/c$a;->a(I)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parse/a/c$a;->a(Ljava/io/InputStream;)Lcom/parse/a/c$a;

    move-result-object v1

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/c$a;->a(J)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/parse/a/c$a;->a(Ljava/lang/String;)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/parse/a/c$a;->a(Ljava/util/Map;)Lcom/parse/a/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/a/c$a;->b(Ljava/lang/String;)Lcom/parse/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/a/c$a;->a()Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method
