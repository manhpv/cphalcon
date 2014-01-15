
/*
 +------------------------------------------------------------------------+
 | Phalcon Framework                                                      |
 +------------------------------------------------------------------------+
 | Copyright (c) 2011-2014 Phalcon Team (http://www.phalconphp.com)       |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file docs/LICENSE.txt.                        |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
 | Authors: Andres Gutierrez <andres@phalconphp.com>                      |
 |          Eduar Carvajal <eduar@phalconphp.com>                         |
 +------------------------------------------------------------------------+
 */

namespace Phalcon\Db;

/**
 * Phalcon\Db\Index
 *
 * Allows to define indexes to be used on tables. Indexes are a common way
 * to enhance database performance. An index allows the database server to find
 * and retrieve specific rows much faster than it could do without an index
 */
class Index implements Phalcon\Db\IndexInterface
{

	/**
	 * Index name
	 *
	 * @var string
	 */
	protected _name { get };

	/**
	 * Index columns
	 *
	 * @var array
	 */
	protected _columns { get };

	/**
	 * Phalcon\Db\Index constructor
	 *
	 * @param string name
	 * @param array columns
	 */
	public function __construct(string! name, columns)
	{
		let this->_name = name;
		let this->_columns = columns;
	}

	/**
	 * Restore a Phalcon\Db\Index object from export
	 *
	 * @param array data
	 */
	public static function __set_state(var data) -> <Phalcon\Db\Index>
	{
		var indexName, columns;

		if !fetch indexName, data["_indexName"] {
			throw new Phalcon\Db\Exception("_indexName parameter is required");
		}

		if !fetch columns, data["_columns"] {
			throw new Phalcon\Db\Exception("_columns parameter is required");
		}

		/**
		 * Return a Phalcon\Db\Index as part of the returning state
		 */
		return new Phalcon\Db\Index(indexName, columns);
	}

}