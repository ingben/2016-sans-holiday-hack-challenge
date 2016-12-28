.class Lcom/parse/ParseDecompressInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/a/d;


# static fields
.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/parse/a/d$a;)Lcom/parse/a/c;
    .locals 6

    invoke-interface {p1}, Lcom/parse/a/d$a;->getRequest()Lcom/parse/a/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/parse/a/d$a;->proceed(Lcom/parse/a/b;)Lcom/parse/a/c;

    move-result-object v0

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {v0, v2}, Lcom/parse/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parse/a/c;->f()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Length"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/parse/a/c$a;

    invoke-direct {v2, v0}, Lcom/parse/a/c$a;-><init>(Lcom/parse/a/c;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/parse/a/c$a;->a(J)Lcom/parse/a/c$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/a/c$a;->a(Ljava/util/Map;)Lcom/parse/a/c$a;

    move-result-object v1

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Lcom/parse/a/c;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/parse/a/c$a;->a(Ljava/io/InputStream;)Lcom/parse/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/a/c$a;->a()Lcom/parse/a/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method
