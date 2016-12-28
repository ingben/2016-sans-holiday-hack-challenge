.class Lcom/parse/ParseCountingFileHttpBody;
.super Lcom/parse/ParseFileHttpBody;


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final EOF:I = -0x1


# instance fields
.field private final progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/parse/ProgressCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCountingFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/parse/ParseCountingFileHttpBody;->file:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    :try_start_0
    new-array v3, v0, [B

    iget-object v0, p0, Lcom/parse/ParseCountingFileHttpBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v7

    add-long/2addr v0, v6

    iget-object v6, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v0

    div-long/2addr v6, v4

    long-to-int v6, v6

    iget-object v7, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void
.end method
