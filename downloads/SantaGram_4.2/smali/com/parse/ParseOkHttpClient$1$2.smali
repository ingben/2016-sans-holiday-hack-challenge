.class Lcom/parse/ParseOkHttpClient$1$2;
.super Lokhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseOkHttpClient$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseOkHttpClient$1;

.field final synthetic val$parseResponse:Lcom/parse/a/c;


# direct methods
.method constructor <init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$1$2;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iput-object p2, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->b()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$2;->val$parseResponse:Lcom/parse/a/c;

    invoke-virtual {v0}, Lcom/parse/a/c;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    goto :goto_0
.end method
