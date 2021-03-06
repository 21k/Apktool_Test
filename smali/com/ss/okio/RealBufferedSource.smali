.class final Lcom/ss/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/ss/okio/Buffer;

.field private closed:Z

.field public final source:Lcom/ss/okio/Source;


# direct methods
.method public constructor <init>(Lcom/ss/okio/Source;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/ss/okio/Buffer;

    invoke-direct {v0}, Lcom/ss/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/ss/okio/RealBufferedSource;-><init>(Lcom/ss/okio/Source;Lcom/ss/okio/Buffer;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/ss/okio/Source;Lcom/ss/okio/Buffer;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    .line 33
    iput-object p1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/ss/okio/RealBufferedSource;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    return v0
.end method

.method private rangeEquals(JLcom/ss/okio/ByteString;)Z
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p3}, Lcom/ss/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/okio/Buffer;->rangeEquals(JLcom/ss/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buffer()Lcom/ss/okio/Buffer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    .line 396
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-interface {v0}, Lcom/ss/okio/Source;->close()V

    .line 397
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->clear()V

    goto :goto_0
.end method

.method public exhausted()Z
    .locals 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(B)J
    .locals 2

    .prologue
    .line 300
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v0, -0x1

    .line 304
    iget-boolean v2, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v2, v2, Lcom/ss/okio/Buffer;->size:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 313
    :goto_0
    return-wide v0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/ss/okio/Buffer;->indexOf(BJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 310
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide p2, v2, Lcom/ss/okio/Buffer;->size:J

    .line 311
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 313
    goto :goto_0
.end method

.method public indexOf(Lcom/ss/okio/ByteString;)J
    .locals 2

    .prologue
    .line 317
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/okio/RealBufferedSource;->indexOf(Lcom/ss/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/ss/okio/ByteString;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 321
    invoke-virtual {p1}, Lcom/ss/okio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    const-wide/16 v4, 0x1

    add-long p2, v2, v4

    .line 323
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/ss/okio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/ss/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide v2

    .line 324
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 328
    :goto_0
    return-wide v0

    .line 327
    :cond_2
    invoke-direct {p0, v2, v3, p1}, Lcom/ss/okio/RealBufferedSource;->rangeEquals(JLcom/ss/okio/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 328
    goto :goto_0
.end method

.method public indexOfElement(Lcom/ss/okio/ByteString;)J
    .locals 2

    .prologue
    .line 335
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/okio/RealBufferedSource;->indexOfElement(Lcom/ss/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/ss/okio/ByteString;J)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v0, -0x1

    .line 339
    iget-boolean v2, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v2, v2, Lcom/ss/okio/Buffer;->size:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 348
    :goto_0
    return-wide v0

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lcom/ss/okio/Buffer;->indexOfElement(Lcom/ss/okio/ByteString;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 345
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide p2, v2, Lcom/ss/okio/Buffer;->size:J

    .line 346
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-interface {v2, v3, v6, v7}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 348
    goto :goto_0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/ss/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/ss/okio/RealBufferedSource$1;-><init>(Lcom/ss/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    .prologue
    .line 122
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ss/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 124
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v0

    .line 126
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v2, v2, Lcom/ss/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 130
    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ss/okio/Buffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read(Lcom/ss/okio/Buffer;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iget-boolean v2, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v2, v2, Lcom/ss/okio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v2

    .line 51
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 55
    :goto_0
    return-wide v0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ss/okio/Buffer;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public readAll(Lcom/ss/okio/Sink;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    .line 148
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v5, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v6, 0x800

    invoke-interface {v4, v5, v6, v7}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v4}, Lcom/ss/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    .line 150
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 151
    add-long/2addr v0, v4

    .line 152
    iget-object v6, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lcom/ss/okio/Sink;->write(Lcom/ss/okio/Buffer;J)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v4, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v4}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 157
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v3}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/ss/okio/Sink;->write(Lcom/ss/okio/Buffer;J)V

    .line 159
    :cond_3
    return-wide v0
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 78
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-virtual {v0, v1}, Lcom/ss/okio/Buffer;->writeAll(Lcom/ss/okio/Source;)J

    .line 93
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 98
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/ss/okio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lcom/ss/okio/ByteString;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-virtual {v0, v1}, Lcom/ss/okio/Buffer;->writeAll(Lcom/ss/okio/Source;)J

    .line 83
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readByteString()Lcom/ss/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lcom/ss/okio/ByteString;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 88
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/ss/okio/Buffer;->readByteString(J)Lcom/ss/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 252
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    move v0, v1

    .line 254
    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/ss/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/ss/okio/Buffer;->getByte(J)B

    move-result v2

    .line 256
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    .line 258
    :cond_1
    if-nez v0, :cond_3

    .line 259
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 260
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 259
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lcom/ss/okio/Buffer;J)V
    .locals 2

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/ss/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/okio/Buffer;->readFully(Lcom/ss/okio/Buffer;J)V

    .line 142
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {p1, v1}, Lcom/ss/okio/Buffer;->writeAll(Lcom/ss/okio/Source;)J

    .line 139
    throw v0
.end method

.method public readFully([B)V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/ss/okio/Buffer;->readFully([B)V

    .line 119
    return-void

    .line 108
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v2, v2, Lcom/ss/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v4, v3, Lcom/ss/okio/Buffer;->size:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Lcom/ss/okio/Buffer;->read([BII)I

    move-result v2

    .line 113
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    add-int/2addr v0, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    throw v1
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 270
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    move v0, v1

    .line 272
    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/ss/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/ss/okio/Buffer;->getByte(J)B

    move-result v2

    .line 274
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    .line 276
    :cond_2
    if-nez v0, :cond_4

    .line 277
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 277
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 232
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 233
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2

    .prologue
    .line 237
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 238
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 242
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 243
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2

    .prologue
    .line 247
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 248
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    .prologue
    .line 222
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 223
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2

    .prologue
    .line 227
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 228
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 181
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-virtual {v0, v1}, Lcom/ss/okio/Buffer;->writeAll(Lcom/ss/okio/Source;)J

    .line 176
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/ss/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-virtual {v0, v1}, Lcom/ss/okio/Buffer;->writeAll(Lcom/ss/okio/Source;)J

    .line 164
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 169
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/ss/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 4

    .prologue
    .line 207
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 209
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/okio/Buffer;->getByte(J)B

    move-result v0

    .line 210
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 211
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0

    .line 212
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2

    .line 213
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 214
    :cond_2
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    .line 215
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->require(J)V

    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/ss/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 188
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/ss/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/ss/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 8

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/ss/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 197
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 198
    new-instance v1, Lcom/ss/okio/Buffer;

    invoke-direct {v1}, Lcom/ss/okio/Buffer;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v6}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/okio/Buffer;->copyTo(Lcom/ss/okio/Buffer;JJ)Lcom/ss/okio/Buffer;

    .line 200
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v3}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {v1}, Lcom/ss/okio/Buffer;->readByteString()Lcom/ss/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/ss/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .locals 5

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public require(J)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/ss/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public skip(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/ss/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v0}, Lcom/ss/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/ss/okio/Buffer;->skip(J)V

    .line 295
    sub-long/2addr p1, v0

    .line 289
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    iget-wide v0, v0, Lcom/ss/okio/Buffer;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->buffer:Lcom/ss/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/okio/Source;->read(Lcom/ss/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 297
    :cond_2
    return-void
.end method

.method public timeout()Lcom/ss/okio/Timeout;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-interface {v0}, Lcom/ss/okio/Source;->timeout()Lcom/ss/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/okio/RealBufferedSource;->source:Lcom/ss/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
