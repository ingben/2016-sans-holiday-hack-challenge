.class Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseOkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseOkHttpRequestBody"
.end annotation


# instance fields
.field private parseBody:Lcom/parse/a/a;


# direct methods
.method public constructor <init>(Lcom/parse/a/a;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    invoke-virtual {v0}, Lcom/parse/a/a;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    invoke-virtual {v0}, Lcom/parse/a/a;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    invoke-virtual {v0}, Lcom/parse/a/a;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0
.end method

.method public getParseHttpBody()Lcom/parse/a/a;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/a/a;

    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/a/a;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
