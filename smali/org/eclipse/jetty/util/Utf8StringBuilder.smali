.class public Lorg/eclipse/jetty/util/Utf8StringBuilder;
.super Lorg/eclipse/jetty/util/Utf8Appendable;
.source "Utf8StringBuilder.java"


# instance fields
.field final _buffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    .line 44
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to read incomplete UTF8 decoded String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->checkState()V

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->reset()V

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->checkState()V

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
