.class Lhdp/player/HuiboList$2;
.super Ljava/lang/Object;
.source "HuiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/HuiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/HuiboList;


# direct methods
.method constructor <init>(Lhdp/player/HuiboList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    :try_start_0
    iget-object v2, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->gson:Lcom/google/gson/Gson;
    invoke-static {v1}, Lhdp/player/HuiboList;->access$10(Lhdp/player/HuiboList;)Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v3, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    # getter for: Lhdp/player/HuiboList;->burlriqi:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/HuiboList;->access$11(Lhdp/player/HuiboList;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-class v4, Lhdp/javabean/HuiboDataInfo;

    .line 180
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/HuiboDataInfo;

    iput-object v1, v2, Lhdp/player/HuiboList;->dateInfo:Lhdp/javabean/HuiboDataInfo;

    .line 182
    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v2, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->dateInfo:Lhdp/javabean/HuiboDataInfo;

    iget-object v2, v2, Lhdp/javabean/HuiboDataInfo;->list:Ljava/util/ArrayList;

    iput-object v2, v1, Lhdp/player/HuiboList;->datelist:Ljava/util/ArrayList;

    .line 183
    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v2, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->dateInfo:Lhdp/javabean/HuiboDataInfo;

    iget-object v2, v2, Lhdp/javabean/HuiboDataInfo;->preurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lhdp/player/HuiboList;->access$12(Lhdp/player/HuiboList;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget v2, v1, Lhdp/player/HuiboList;->cacount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lhdp/player/HuiboList;->cacount:I

    if-le v2, v6, :cond_0

    .line 188
    iget-object v1, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v1, v1, Lhdp/player/HuiboList;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lhdp/player/HuiboList$2;->this$0:Lhdp/player/HuiboList;

    iget-object v2, v2, Lhdp/player/HuiboList;->runnable_date:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
