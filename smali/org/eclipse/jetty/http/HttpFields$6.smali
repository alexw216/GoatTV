.class Lorg/eclipse/jetty/http/HttpFields$6;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/http/HttpFields;

.field tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

.field final synthetic val$e:Ljava/util/Enumeration;

.field final synthetic val$separators:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$6;->this$0:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$6;->val$e:Ljava/util/Enumeration;

    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->val$separators:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    :goto_0
    return v1

    .line 540
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->val$e:Ljava/util/Enumeration;

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->val$e:Ljava/util/Enumeration;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    .local v0, "value":Ljava/lang/String;
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpFields$6;->val$separators:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    .line 544
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 546
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    move v1, v2

    .line 547
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$6;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$6;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 553
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$6;->tok:Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, "next":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 555
    :cond_1
    return-object v0
.end method
