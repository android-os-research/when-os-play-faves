.class public Lcom/sec/ims/IMSUserProfile$Builder;
.super Ljava/lang/Object;
.source "IMSUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mProfile:Lcom/sec/ims/IMSUserProfile;

.field private mProxyAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/ims/IMSUserProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/sec/ims/IMSUserProfile;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/sec/ims/IMSUserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile-IA;)V

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    .line 142
    if-eqz p1, :cond_65

    .line 145
    :try_start_d
    # invokes: Ljava/lang/Object;->clone()Ljava/lang/Object;
    invoke-static {p1}, Lcom/sec/ims/IMSUserProfile;->access$000(Lcom/sec/ims/IMSUserProfile;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSUserProfile;

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_15} :catch_5c

    .line 148
    nop

    .line 150
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmPort(Lcom/sec/ims/IMSUserProfile;I)V

    .line 154
    invoke-static {}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ProxyAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 146
    :catch_5c
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "should not occur"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/sec/ims/IMSUserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile-IA;)V

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    .line 164
    if-eqz p1, :cond_11

    .line 167
    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmProfileName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 169
    return-void

    .line 165
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "serverDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/sec/ims/IMSUserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile-IA;)V

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    .line 181
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 185
    invoke-static {v0, p2}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmDomain(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmProfileName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 187
    return-void

    .line 182
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username and serverDomain cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p1

    goto :goto_25

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/ims/IMSUserProfile;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    return-object v0
.end method

.method public setAuthUserName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmAuthUserName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 202
    return-object p0
.end method

.method public setAutoRegistration(Z)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 3
    .param p1, "flag"    # Z

    .line 304
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmAutoRegistration(Lcom/sec/ims/IMSUserProfile;Z)V

    .line 305
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setOutboundProxy(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 2
    .param p1, "outboundProxy"    # Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmPassword(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method public setPort(I)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 235
    const v0, 0xffff

    if-gt p1, v0, :cond_f

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_f

    .line 238
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmPort(Lcom/sec/ims/IMSUserProfile;I)V

    .line 239
    return-object p0

    .line 236
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect port arugment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmProfileName(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 213
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 251
    if-eqz p1, :cond_38

    .line 254
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_32

    .line 256
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmProtocol(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)V

    .line 259
    return-object p0

    .line 252
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSendKeepAlive(Z)Lcom/sec/ims/IMSUserProfile$Builder;
    .registers 3
    .param p1, "flag"    # Z

    .line 292
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-$$Nest$fputmSendKeepAlive(Lcom/sec/ims/IMSUserProfile;Z)V

    .line 293
    return-object p0
.end method
