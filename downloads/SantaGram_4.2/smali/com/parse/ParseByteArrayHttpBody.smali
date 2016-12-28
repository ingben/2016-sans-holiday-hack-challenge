.class Lcom/parse/ParseByteArrayHttpBody;
.super Lcom/parse/a/a;


# instance fields
.field final content:[B

.field final contentInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/parse/ParseByteArrayHttpBody;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/parse/a/a;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/parse/ParseByteArrayHttpBody;->content:[B

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/parse/ParseByteArrayHttpBody;->contentInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseByteArrayHttpBody;->contentInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseByteArrayHttpBody;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
