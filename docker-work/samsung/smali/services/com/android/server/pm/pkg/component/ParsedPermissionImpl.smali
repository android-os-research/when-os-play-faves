.class public Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedPermission;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public backgroundPermission:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public knownCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

.field public protectionLevel:I

.field public requestRes:I

.field public tree:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 127
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 121
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 123
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 166
    iput p3, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 167
    iput p4, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 168
    iput-boolean p5, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 169
    iput-object p6, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 170
    iput-object p7, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object p0
.end method

.method public getKnownCerts()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    if-nez p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public getProtectionLevel()I
    .registers 1

    .line 192
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return p0
.end method

.method public getRequestRes()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return p0
.end method

.method public isTree()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return p0
.end method

.method public setBackgroundPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object p0
.end method

.method public setKnownCert(Ljava/lang/String;)V
    .registers 3

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method public setKnownCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-object p0
.end method

.method public setKnownCerts([Ljava/lang/String;)V
    .registers 7

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    .line 81
    iget-object v3, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 214
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return-object p0
.end method

.method public setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 208
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return-object p0
.end method

.method public setTree(Z)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .registers 2

    .line 220
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
