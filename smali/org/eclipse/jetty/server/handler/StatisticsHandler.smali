.class public Lorg/eclipse/jetty/server/handler/StatisticsHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "StatisticsHandler.java"


# instance fields
.field private final _dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private final _dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _expires:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

.field private final _requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private final _requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final _resumes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final _suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 37
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 38
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 39
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 40
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    new-instance v0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/SampleStatistic;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/StatisticsHandler;Lorg/eclipse/jetty/server/Request;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/StatisticsHandler;
    .param p1, "x1"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private updateResponse(Lorg/eclipse/jetty/server/Request;)V
    .locals 4
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 149
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 150
    .local v0, "response":Lorg/eclipse/jetty/server/Response;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 171
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 177
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->statsReset()V

    .line 178
    return-void
.end method

.method public getDispatched()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedActive()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedActiveMax()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedTimeMax()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeMean()D
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeStdDev()D
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeTotal()J
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRequestTimeMax()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeMean()D
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeStdDev()D
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeTotal()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequests()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRequestsActive()I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRequestsActiveMax()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getResponses1xx()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses2xx()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses3xx()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses4xx()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses5xx()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponsesBytesTotal()J
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResumes()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStatsOnMs()J
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSuspends()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSuspendsActive()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSuspendsActiveMax()I
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "httpRequest"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "httpResponse"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 103
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 104
    .local v0, "continuation":Lorg/eclipse/jetty/server/AsyncContinuation;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 108
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v5

    .line 121
    .local v5, "start":J
    :cond_0
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 126
    .local v3, "now":J
    sub-long v1, v3, v5

    .line 128
    .local v1, "dispatched":J
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 129
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v7, v1, v2}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 131
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 133
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 135
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 113
    .end local v1    # "dispatched":J
    .end local v3    # "now":J
    .end local v5    # "start":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 114
    .restart local v5    # "start":J
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 115
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 126
    .restart local v3    # "now":J
    sub-long v1, v3, v5

    .line 128
    .restart local v1    # "dispatched":J
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 129
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 131
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 133
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 134
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 135
    :cond_4
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 125
    :cond_5
    :goto_2
    throw v7

    .line 137
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 139
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 140
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 141
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 140
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v7, v1, v2}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 141
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    goto :goto_1
.end method

.method public statsReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 95
    return-void
.end method

.method public toStatsHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<h1>Statistics:</h1>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "Statistics gathering started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getStatsOnMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "<h2>Requests:</h2>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "Total requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequests()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "Active requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActive()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, "Max active requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActiveMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "Total requests time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "Mean request time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMean()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "Max request time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMax()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "Request time standard deviation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeStdDev()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "<h2>Dispatches:</h2>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "Total dispatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatched()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, "Active dispatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActive()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, "Max active dispatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActiveMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "Total dispatched time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "Mean dispatched time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMean()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "Max dispatched time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMax()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, "Dispatched time standard deviation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeStdDev()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, "Total requests suspended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getSuspends()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "Total requests expired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getExpires()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "Total requests resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResumes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, "<h2>Responses:</h2>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "1xx responses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses1xx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "2xx responses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses2xx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "3xx responses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses3xx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, "4xx responses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses4xx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "5xx responses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses5xx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, "Bytes sent total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponsesBytesTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
