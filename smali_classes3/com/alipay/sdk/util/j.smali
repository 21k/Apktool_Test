.class Lcom/alipay/sdk/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/i;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/i;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/i;

    invoke-static {v0}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/util/i;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/i;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/util/i;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 52
    iget-object v0, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/i;

    invoke-static {v0}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/util/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/i;->a(Lcom/alipay/sdk/util/i;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 46
    return-void
.end method