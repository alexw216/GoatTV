.class Lorg/eclipse/jetty/client/HttpClient$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/client/HttpClient;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpClient;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient$1;->this$0:Lorg/eclipse/jetty/client/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient$1;->this$0:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient$1;->this$0:Lorg/eclipse/jetty/client/HttpClient;

    # getter for: Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpClient;->access$100(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->tick(J)V

    .line 432
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient$1;->this$0:Lorg/eclipse/jetty/client/HttpClient;

    # getter for: Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpClient;->access$200(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient$1;->this$0:Lorg/eclipse/jetty/client/HttpClient;

    # getter for: Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpClient;->access$100(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->getNow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->tick(J)V

    .line 435
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method
