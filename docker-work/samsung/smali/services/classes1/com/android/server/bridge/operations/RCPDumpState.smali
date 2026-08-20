.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field public static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContainerUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mOwnerUri:Landroid/net/Uri;

.field public mQueryUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    .line 23
    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .registers 2

    .line 28
    sget-object p1, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez p1, :cond_b

    .line 29
    new-instance p1, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {p1, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    .line 30
    :cond_b
    sget-object p0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object p0
.end method


# virtual methods
.method public dumpBackupAndRestoreHistory(Ljava/io/PrintWriter;I)V
    .registers 9

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpBackupAndRestoreHistory , userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "com.samsung.knox.securefolder"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/bnr_logs"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_82

    .line 71
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7f

    :cond_4e
    const-string/jumbo p2, "timeStamp: "

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "timestamp"

    .line 74
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "text: "

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "text"

    .line 77
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 79
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_4e

    .line 81
    :cond_7f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_82
    return-void
.end method

.method public dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V
    .registers 9

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    goto :goto_b

    :cond_9
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    .line 39
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 40
    iget-object p0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_d3

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_d0

    :cond_47
    const-string/jumbo p2, "timeStamp"

    .line 45
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " ("

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "operation"

    .line 47
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ")"

    .line 48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " ret:"

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "resultCode"

    .line 50
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " srcUri:"

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "srcUri"

    .line 52
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " destUri:"

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destUri"

    .line 54
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " src:"

    .line 55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "source"

    .line 56
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " dest:"

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "destination"

    .line 58
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_47

    .line 61
    :cond_d0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_d3
    return-void
.end method

.method public final isSecureFolderId(I)Z
    .registers 2

    .line 87
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method
