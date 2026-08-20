.class public Lcom/android/server/enterprise/restriction/SimDBProxy;
.super Ljava/lang/Object;
.source "SimDBProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimDBProxy"

.field public static mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;
    .registers 2

    .line 51
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/SimDBProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 54
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    return-object p0
.end method


# virtual methods
.method public addSimcard(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "adminUid"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SimPinCode"

    .line 69
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public getAdminBySimcard(Ljava/lang/String;)I
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SimTable"

    const-string v1, "SimIccId"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIccIdListByAdmin()[Ljava/lang/String;
    .registers 6

    const-string v0, "SimIccId"

    .line 132
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SimTable"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_2b

    .line 139
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2b
    return-object v2
.end method

.method public getPincode(ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v3, "SimIccId"

    const-string v5, "SimPinCode"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " uid "

    if-eqz v0, :cond_33

    .line 112
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find pincode for iccId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 114
    :cond_33
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully found pincode for iccId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-object p0
.end method

.method public getPincode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 94
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SimTable"

    const-string v1, "SimIccId"

    const-string v2, "SimPinCode"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 98
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find pincode for iccId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 100
    :cond_29
    sget-object v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully found pincode for iccId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-object p0
.end method

.method public hasAnySimcard()Z
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SimTable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public removeSimcard(ILjava/lang/String;)Z
    .registers 5

    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SimTable"

    const-string v1, "SimIccId"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeSimcardsByAdmin(I)Z
    .registers 3

    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SimTable"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setPincode(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 86
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "SimPinCode"

    .line 87
    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v3, "SimIccId"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method
