.class public final Lcom/parse/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/io/InputStream;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/parse/a/c$a;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/a/c$a;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/parse/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/parse/a/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/a/c$a;->a(I)Lcom/parse/a/c$a;

    invoke-virtual {p1}, Lcom/parse/a/c;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/a/c$a;->a(Ljava/io/InputStream;)Lcom/parse/a/c$a;

    invoke-virtual {p1}, Lcom/parse/a/c;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/parse/a/c$a;->a(J)Lcom/parse/a/c$a;

    invoke-virtual {p1}, Lcom/parse/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/a/c$a;->b(Ljava/lang/String;)Lcom/parse/a/c$a;

    invoke-virtual {p1}, Lcom/parse/a/c;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/a/c$a;->a(Ljava/util/Map;)Lcom/parse/a/c$a;

    invoke-virtual {p1}, Lcom/parse/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/a/c$a;->a(Ljava/lang/String;)Lcom/parse/a/c$a;

    return-void
.end method

.method static synthetic a(Lcom/parse/a/c$a;)I
    .locals 1

    iget v0, p0, Lcom/parse/a/c$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/parse/a/c$a;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c$a;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic c(Lcom/parse/a/c$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/parse/a/c$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/parse/a/c$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/parse/a/c$a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c$a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/parse/a/c$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c$a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/parse/a/c$a;
    .locals 0

    iput p1, p0, Lcom/parse/a/c$a;->a:I

    return-object p0
.end method

.method public a(J)Lcom/parse/a/c$a;
    .locals 1

    iput-wide p1, p0, Lcom/parse/a/c$a;->c:J

    return-object p0
.end method

.method public a(Ljava/io/InputStream;)Lcom/parse/a/c$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/c$a;->b:Ljava/io/InputStream;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/parse/a/c$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/c$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/parse/a/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/a/c$a;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/a/c$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public a()Lcom/parse/a/c;
    .locals 2

    new-instance v0, Lcom/parse/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/a/c;-><init>(Lcom/parse/a/c$a;Lcom/parse/a/c$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/parse/a/c$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/c$a;->f:Ljava/lang/String;

    return-object p0
.end method
