.class Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;
.super Lorg/apache/http/entity/InputStreamEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseApacheHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseApacheHttpEntity"
.end annotation


# instance fields
.field private parseBody:Lcom/parse/a/a;


# direct methods
.method public constructor <init>(Lcom/parse/a/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/parse/a/a;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/a/a;->getContentLength()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p1}, Lcom/parse/a/a;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;->parseBody:Lcom/parse/a/a;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;->parseBody:Lcom/parse/a/a;

    invoke-virtual {v0, p1}, Lcom/parse/a/a;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
