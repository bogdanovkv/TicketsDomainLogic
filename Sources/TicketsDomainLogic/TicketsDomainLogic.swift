import DomainAbstraction
import TicketsDomainAbstraction
import TicketsRepositoryAbstraction

/// Сборщик UseCase'ов логики работы с билетами
public final class TicketsDomainLogicAssembly {

	public init() {}

	/// Создает кейс поиска билетов
	/// - Parameter repository: репозиторий билетов
	/// - Returns: use case
	public func createSearchTicketsUseCase(repository: TicketsRepositoryProtocol) -> UseCase<TicketsSearchModel, [Ticket]> {
		return SearchTicketsUseCase(ticketsRepository: repository)
	}
}
