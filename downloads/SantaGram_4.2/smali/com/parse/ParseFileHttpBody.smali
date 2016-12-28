.class Lcom/parse/ParseFileHttpBody;
.super Lcom/parse/a/a;


# instance fields
.field final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/parse/a/a;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/parse/ParseFileHttpBody;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/parse/ParseFileHttpBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/parse/ParseFileHttpBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0, p1}, Lcom/parse/ParseIOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method
