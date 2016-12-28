.class public final Lcom/parse/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/a/c$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/io/InputStream;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
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

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/parse/a/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/parse/a/c$a;->a(Lcom/parse/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/parse/a/c;->a:I

    invoke-static {p1}, Lcom/parse/a/c$a;->b(Lcom/parse/a/c$a;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/c;->b:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/parse/a/c$a;->c(Lcom/parse/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/a/c;->c:J

    invoke-static {p1}, Lcom/parse/a/c$a;->d(Lcom/parse/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/a/c$a;->e(Lcom/parse/a/c$a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/c;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/parse/a/c$a;->f(Lcom/parse/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/a/c$a;Lcom/parse/a/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/a/c;-><init>(Lcom/parse/a/c$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/parse/a/c;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/parse/a/c;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/a/c;->e:Ljava/util/Map;

    return-object v0
.end method
