.class public Lcom/ss/android/topic/send/SendPostTask$c;
.super Lcom/ss/android/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/topic/send/SendPostTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Lcom/ss/android/topic/send/SendPostTask$a;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/ss/android/topic/b/p;->M:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/topic/send/SendPostTask$c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/concurrent/CountDownLatch;Lcom/ss/android/topic/send/SendPostTask$a;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ss/android/common/a;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/ss/android/topic/send/SendPostTask$c;->b:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/ss/android/topic/send/SendPostTask$c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 272
    iput-object p5, p0, Lcom/ss/android/topic/send/SendPostTask$c;->d:Lcom/ss/android/topic/send/SendPostTask$a;

    .line 273
    iput-wide p2, p0, Lcom/ss/android/topic/send/SendPostTask$c;->e:J

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 278
    .line 279
    const-string v6, ""

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 281
    const/4 v7, 0x0

    .line 283
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-string v1, "watermark"

    const-string v2, "0"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "forum_id"

    iget-wide v2, p0, Lcom/ss/android/topic/send/SendPostTask$c;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, ""

    .line 287
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lcom/ss/android/topic/send/SendPostTask$c;->b:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 289
    invoke-static {v3}, Lcom/bytedance/article/common/utility/io/FileUtils;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const/16 v0, 0x5000

    sget-object v1, Lcom/ss/android/topic/send/SendPostTask$c;->a:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/ss/android/common/http/f;

    invoke-static/range {v0 .. v5}, Lcom/ss/android/common/util/NetworkUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/ss/android/common/http/f;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    move-object v2, v7

    move v0, v9

    .line 302
    :goto_0
    if-eqz v0, :cond_3

    .line 303
    const/4 v1, -0x1

    move-object v0, v6

    .line 325
    :goto_1
    if-eqz v2, :cond_0

    .line 327
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 332
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/ss/android/topic/send/SendPostTask$c;->d:Lcom/ss/android/topic/send/SendPostTask$a;

    iget-object v3, p0, Lcom/ss/android/topic/send/SendPostTask$c;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lcom/ss/android/topic/send/SendPostTask$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/ss/android/topic/send/SendPostTask$c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 334
    return-void

    .line 293
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/ss/android/topic/send/a;->a(Ljava/lang/String;F)Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 294
    if-eqz v7, :cond_2

    .line 295
    const/16 v0, 0x5000

    :try_start_3
    sget-object v1, Lcom/ss/android/topic/send/SendPostTask$c;->a:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/ss/android/common/http/f;

    invoke-static/range {v0 .. v5}, Lcom/ss/android/common/util/NetworkUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/ss/android/common/http/f;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    move-object v2, v7

    move v0, v9

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 299
    goto :goto_0

    .line 304
    :cond_3
    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    const-string v0, "upload_img"

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v10, v11, v1, v3}, Lcom/ss/android/topic/send/SendPostTask;->a(Ljava/lang/String;JZI)V

    move-object v0, v6

    move v1, v8

    goto :goto_1

    .line 308
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-static {v0}, Lcom/ss/android/common/a;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 311
    const-string v0, "upload_img"

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v10, v11, v1, v3}, Lcom/ss/android/topic/send/SendPostTask;->a(Ljava/lang/String;JZI)V

    move-object v0, v6

    move v1, v8

    goto :goto_1

    .line 313
    :cond_5
    const/16 v1, 0xa

    .line 314
    const-string v3, "upload_img"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v10, v11, v4, v5}, Lcom/ss/android/topic/send/SendPostTask;->a(Ljava/lang/String;JZI)V

    .line 315
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    const-string v3, "web_uri"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    .line 320
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/ss/android/topic/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/article/common/d/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)I

    move-result v0

    .line 321
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 322
    invoke-static {v1, v3}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/lang/Throwable;[Ljava/lang/String;)I

    move-result v1

    .line 323
    const-string v3, "upload_img"

    const/4 v4, 0x0

    invoke-static {v3, v10, v11, v4, v1}, Lcom/ss/android/topic/send/SendPostTask;->a(Ljava/lang/String;JZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    if-eqz v2, :cond_7

    .line 327
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v1, v0

    move-object v0, v6

    .line 329
    goto/16 :goto_2

    .line 328
    :catch_1
    move-exception v1

    move v1, v0

    move-object v0, v6

    .line 329
    goto/16 :goto_2

    .line 325
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    .line 327
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 329
    :cond_6
    :goto_5
    throw v0

    .line 328
    :catch_2
    move-exception v2

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    .line 325
    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_4

    .line 319
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    move v1, v0

    move-object v0, v6

    goto/16 :goto_2
.end method
