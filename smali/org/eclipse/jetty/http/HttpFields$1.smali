.class final Lorg/eclipse/jetty/http/HttpFields$1;
.super Ljava/lang/ThreadLocal;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/eclipse/jetty/http/HttpFields$DateGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$1;->initialValue()Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/eclipse/jetty/http/HttpFields$DateGenerator;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;-><init>(Lorg/eclipse/jetty/http/HttpFields$1;)V

    return-object v0
.end method
