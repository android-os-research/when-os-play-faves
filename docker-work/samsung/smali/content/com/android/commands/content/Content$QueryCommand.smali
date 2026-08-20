.class Lcom/android/commands/content/Content$QueryCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCommand"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;I[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 654
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    .line 655
    iput-object p3, p0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    .line 656
    iput-object p4, p0, Lcom/android/commands/content/Content$QueryCommand;->mExtras:Landroid/os/Bundle;

    .line 657
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .registers 13
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 661
    new-instance v1, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 662
    invoke-static {}, Lcom/android/commands/content/Content$QueryCommand;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/commands/content/Content$QueryCommand;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/commands/content/Content$QueryCommand;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/commands/content/Content$QueryCommand;->mExtras:Landroid/os/Bundle;

    .line 661
    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 663
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "No result found."

    if-nez v0, :cond_24

    .line 664
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    return-void

    .line 668
    :cond_24
    :try_start_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, "rowIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .local v2, "builder":Ljava/lang/StringBuilder;
    :cond_30
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 673
    const-string v3, "Row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    add-int/lit8 v1, v1, 0x1

    .line 675
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 676
    .local v3, "columnCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4a
    if-ge v4, v3, :cond_96

    .line 677
    if-lez v4, :cond_53

    .line 678
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_53
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, "columnName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 682
    .local v6, "columnValue":Ljava/lang/String;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 683
    .local v7, "columnIndex":I
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    .line 684
    .local v8, "type":I
    packed-switch v8, :pswitch_data_b2

    goto :goto_85

    .line 695
    :pswitch_64
    const-string v9, "BLOB"

    move-object v6, v9

    .line 696
    goto :goto_85

    .line 692
    :pswitch_68
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 693
    goto :goto_85

    .line 686
    :pswitch_6e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 687
    goto :goto_85

    .line 689
    :pswitch_78
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 690
    goto :goto_85

    .line 698
    :pswitch_82
    const-string v9, "NULL"

    move-object v6, v9

    .line 701
    :goto_85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    nop

    .end local v5    # "columnName":Ljava/lang/String;
    .end local v6    # "columnValue":Ljava/lang/String;
    .end local v7    # "columnIndex":I
    .end local v8    # "type":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 703
    .end local v4    # "i":I
    :cond_96
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 704
    .end local v3    # "columnCount":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_30

    .line 705
    .end local v1    # "rowIndex":I
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    goto :goto_a7

    .line 706
    :cond_a2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_24 .. :try_end_a7} :catchall_ac

    .line 709
    :goto_a7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 710
    nop

    .line 711
    return-void

    .line 709
    :catchall_ac
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 710
    throw v1

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_82
        :pswitch_78
        :pswitch_6e
        :pswitch_68
        :pswitch_64
    .end packed-switch
.end method
