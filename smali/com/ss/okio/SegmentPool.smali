.class final Lcom/ss/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/ss/okio/Segment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static recycle(Lcom/ss/okio/Segment;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    .line 50
    iget-object v0, p0, Lcom/ss/okio/Segment;->next:Lcom/ss/okio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/okio/Segment;->prev:Lcom/ss/okio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/ss/okio/Segment;->shared:Z

    if-eqz v0, :cond_2

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_2
    const-class v1, Lcom/ss/okio/SegmentPool;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-wide v2, Lcom/ss/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_3
    :try_start_1
    sget-wide v2, Lcom/ss/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/ss/okio/SegmentPool;->byteCount:J

    .line 55
    sget-object v0, Lcom/ss/okio/SegmentPool;->next:Lcom/ss/okio/Segment;

    iput-object v0, p0, Lcom/ss/okio/Segment;->next:Lcom/ss/okio/Segment;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/okio/Segment;->limit:I

    iput v0, p0, Lcom/ss/okio/Segment;->pos:I

    .line 57
    sput-object p0, Lcom/ss/okio/SegmentPool;->next:Lcom/ss/okio/Segment;

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static take()Lcom/ss/okio/Segment;
    .locals 6

    .prologue
    .line 37
    const-class v1, Lcom/ss/okio/SegmentPool;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/ss/okio/SegmentPool;->next:Lcom/ss/okio/Segment;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/ss/okio/SegmentPool;->next:Lcom/ss/okio/Segment;

    .line 40
    iget-object v2, v0, Lcom/ss/okio/Segment;->next:Lcom/ss/okio/Segment;

    sput-object v2, Lcom/ss/okio/SegmentPool;->next:Lcom/ss/okio/Segment;

    .line 41
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ss/okio/Segment;->next:Lcom/ss/okio/Segment;

    .line 42
    sget-wide v2, Lcom/ss/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/ss/okio/SegmentPool;->byteCount:J

    .line 43
    monitor-exit v1

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v0, Lcom/ss/okio/Segment;

    invoke-direct {v0}, Lcom/ss/okio/Segment;-><init>()V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method