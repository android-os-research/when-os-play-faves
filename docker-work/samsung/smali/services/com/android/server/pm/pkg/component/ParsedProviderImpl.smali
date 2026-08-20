.class public Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedProviderImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedProvider;
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
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authority:Ljava/lang/String;

.field public forceUriPermissions:Z

.field public grantUriPermissions:Z

.field public initOrder:I

.field public multiProcess:Z

.field public pathPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field

.field public readPermission:Ljava/lang/String;

.field public syncable:Z

.field public uriPermissionPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public writePermission:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 145
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 151
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 152
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 70
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 72
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 74
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 75
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 77
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZILjava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZI",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 196
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    .line 197
    iput-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    .line 198
    iput-object p3, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    .line 200
    iput-boolean p5, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    .line 201
    iput-boolean p6, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    .line 202
    iput-boolean p7, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    .line 203
    iput p8, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    .line 204
    iput-object p9, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    .line 205
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    invoke-static {p1, p2, p9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-object p10, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    .line 208
    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, p2, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object p0
.end method

.method public addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public getInitOrder()I
    .registers 1

    .line 251
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return p0
.end method

.method public getPathPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getReadPermission()Ljava/lang/String;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getUriPermissionPatterns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object p0
.end method

.method public getWritePermission()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object p0
.end method

.method public isForceUriPermissions()Z
    .registers 1

    .line 241
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return p0
.end method

.method public isGrantUriPermissions()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return p0
.end method

.method public isMultiProcess()Z
    .registers 1

    .line 246
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return p0
.end method

.method public isSyncable()Z
    .registers 1

    .line 221
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return p0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public setForceUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 284
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return-object p0
.end method

.method public setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 278
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return-object p0
.end method

.method public setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 296
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return-object p0
.end method

.method public setMultiProcess(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 290
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return-object p0
.end method

.method public setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 3

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 85
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return-object p0
.end method

.method public setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .registers 3

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 92
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Provider{"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 129
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 130
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 133
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 135
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
