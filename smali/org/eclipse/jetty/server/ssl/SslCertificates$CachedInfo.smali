.class Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
.super Ljava/lang/Object;
.source "SslCertificates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ssl/SslCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedInfo"
.end annotation


# instance fields
.field private final _certs:[Ljava/security/cert/X509Certificate;

.field private final _idStr:Ljava/lang/String;

.field private final _keySize:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "keySize"    # Ljava/lang/Integer;
    .param p2, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p3, "idStr"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_keySize:Ljava/lang/Integer;

    .line 144
    iput-object p2, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_certs:[Ljava/security/cert/X509Certificate;

    .line 145
    iput-object p3, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_idStr:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method getCerts()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_certs:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getIdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_idStr:Ljava/lang/String;

    return-object v0
.end method

.method getKeySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->_keySize:Ljava/lang/Integer;

    return-object v0
.end method
